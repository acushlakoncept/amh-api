# frozen_string_literal: true

class SerializableUser < JSONAPI::Serializable::Resource
  type 'users'

  attributes :username, :email, :role

  link :self do
    @url_helpers.api_user_url(@object.id)
  end
end
