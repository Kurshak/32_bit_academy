class Answer < ApplicationRecord
    has_one_attached :code_file
    belongs_to :given_task, class_name: 'GivenTask', foreign_key: 'given_task_id'

    def codefile_on_disk
        ActiveStorage::Blob.service.send(:path_for, codefile.key)
    end
end
