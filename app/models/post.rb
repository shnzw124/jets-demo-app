class Post < Dynomite::Item # ApplicationRecord ではなく Dynomite::Item を継承
  include ActiveModel::Validations # これによりモデルバリデーションの実装が可能に

  def persisted?
    !self.id.nil?
  end

  column :id, :title # getter/setter を準備
  validates :title, presence: true
end
