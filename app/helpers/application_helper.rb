module ApplicationHelper
    
  def header
    if !@project.nil?
        @project.name
    end
  end
  
end
