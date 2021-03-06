module ApplicationHelper
	def bootstrap_class_for flash_type
    	{ success: "alert-success", error: "alert-danger", danger: "alert-danger", alert: "alert-warning", notice: "alert-info" }[flash_type.to_sym] || flash_type.to_s
  	end

  	def flash_messages(opts = {})
    	flash.each do |msg_type, message|
	      	concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)} alert-dismissible", role: "alert") do 
              concat content_tag(:button, raw('&times;'), class: "close", data: { dismiss: 'alert' }, aria: {label: 'Close'})
	            concat message 
	        end)
    	end
    	nil
  	end
end
