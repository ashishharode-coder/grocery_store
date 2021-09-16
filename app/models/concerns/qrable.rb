module Qrable
  require 'rqrcode'
  require 'rqrcode_png'
  extend ActiveSupport::Concern

  included do
    has_one_base64_attached :qr_code
    after_create :attach_qr

    def attach_qr
      str = "#{ENV['BASE_URL']}/general/#{self.model_name.route_key}/#{self.id}"

      png = RQRCode::QRCode.new(str).as_png.resize(200, 200).to_data_url
      decoded_data = Base64.decode64(png.split(",")[1])
      self.qr_code.attach( io: StringIO.new(decoded_data), filename: "qr_code.png", content_type: "image/png" )
    end
  end
end