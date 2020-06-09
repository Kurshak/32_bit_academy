class UserSerializer
  include FastJsonapi::ObjectSerializer

  set_type :user
  attributes :login, :name, :surname, :fathername, :birthday, :phone_number, :role, :email
end
