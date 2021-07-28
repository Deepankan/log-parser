class LoggersController < ApplicationController
  @@results = nil

  def index
    if @@results.present?
     @results = @@results.sort_by {|_key, value| -value.count }.to_h
    end
  end

  def parse_file
    begin
       @@results =  LoggerParser.parse_log(File.readlines params['file'].path)
       respond_to do |format|
        flash[:success] = "Log File Parsed Successfully."
        format.html { redirect_to root_path } #-> @search will be available in the other view
      end
    rescue Exception => e
      respond_to do |format|
        @@results = nil
        flash[:error] = params['file'].present? ? " Something went wrong. Please check your log file" : " Please upload a file to parse."
        format.html { redirect_back(fallback_location: root_path) }
      end
    end


  end
end
