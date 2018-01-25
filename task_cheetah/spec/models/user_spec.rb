require "rails_helper"

RSpec.describe User, :type => :model do
  subject {
    described_class.new(name: "Drew", username: "djovercash", password_digest: "$2a$04$.HueKgDpRGzy8z8sdpf9qe5HxFCJ8KcGQaPC8/kd.IK")}

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is invalid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it "is invalid without a username" do
      subject.username = nil
      expect(subject).to_not be_valid
    end

    it "is invalid without a password digest" do
      subject.password_digest = nil
      expect(subject).to_not be_valid
    end
  end
end
