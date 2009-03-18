module SerializeLocationHeader::SerializerInstanceMethods
	def serializable_record(*args)
		ret = super
		ret.merge!(options[:merge] || {})
		return ret
	end
end