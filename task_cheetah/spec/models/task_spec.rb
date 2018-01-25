require "rails_helper"

RSpec.describe Task, :type => :model do
  subject {
    described_class.new(title: "Clean Up On Aisle 5", description: "Someone had an accident on the floor. We need a clean up.", address: "255 Fort Washington Ave, New York, NY", snake_id: 1, cheetah_points: 20)}

  describe "Validations" do
    it "is valid with valid attributes" do
      user = User.create(name: "Drew", username: "djovercash", password_digest: "$2a$04$.HueKgDpRGzy8z8sdpf9qe5HxFCJ8KcGQaPC8/kd.IK")
      subject.snake = user
      subject.save
      expect(subject).to be_valid
    end

    it "is invalid without a title" do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it "is invalid without a description" do
      subject.description = nil
      expect(subject).to_not be_valid
    end

    it "is invalid without an address" do
      subject.address = nil || subject.address = ""
      expect(subject).to_not be_valid
    end

    it "is invalid without a snake" do
      subject.snake_id = nil
      expect(subject).to_not be_valid
    end

    it "is invalid without a cheetah point value" do
      subject.cheetah_points = nil || subject.cheetah_points < 1
      expect(subject).to_not be_valid
    end
  end

  describe "Associations" do
    it "belongs to a snake" do
      assc = described_class.reflect_on_association(:snake)
      expect(assc.macro).to eq :belongs_to
    end
  end

end
