module SerializeLocationHeader::ControllerInstanceMethods
	def self.included(base)
		base.class_eval do
			alias_method_chain :render, :location
		end
	end
	
	def render_with_location(*args)
		options = args.last.is_a?(Hash) ? args.last : {}
		if !options[:json].nil? and options.include? :location
			if options[:json].is_a? Hash
				options[:json].merge "_location" => options[:location]
			elsif options[:json].is_a? ActiveRecord::Base
				options[:json] = options[:json].to_json :merge => { "_location" => options[:location] }
			end
		end
		render_without_location(*args)
	end
end
