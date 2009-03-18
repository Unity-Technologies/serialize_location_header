class ActionController::Base; include SerializeLocationHeader::ControllerInstanceMethods; end
class ActiveRecord::Serialization::JsonSerializer; include SerializeLocationHeader::SerializerInstanceMethods; end
