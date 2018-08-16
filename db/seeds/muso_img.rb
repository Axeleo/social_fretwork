Muso.all.each do |muso|
    5.times do
        m_img = MusoImg.new(
            muso: muso
        )
        image_src = File.join(Rails.root, "/stock_images/img_#{rand(39)}.jpg")
        src_file = File.new(image_src)
        m_img.img = src_file
        m_img.save
    end
end