class CourseWithCategoriesAndThemesSerializer
  include FastJsonapi::ObjectSerializer

  set_type :course
  attributes :id, :name, :description, :shortname
  attribute :categories do |object|
    CategoryWithThemesSerializer.new(object.categories)
  end
end
