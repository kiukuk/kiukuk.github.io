<?php if (!empty($post->get_val('info'))) {
    foreach ($post->get_val('info') as $logo) : extract($logo); ?>
    <ul class="breadcrumb" style="margin: 25px 0px 20px 100px">
          <li class="breadcrumb-item"><a href="<?= CONTROLLERS_USER ?>">Trang chủ</a></li>
          <li class="breadcrumb-item active"><a href="<?= CONTROLLERS_USER ?>?action=gioithieu">giới thiệu</a></li>
      </ul>
        <div class="container tieude-main p-3 mt-3">
            <a href="">
                <span class="text-white"><i class="ti-wallet"></i> Lời giới thiệu</span>
            </a>
        </div>
        <div class="content_gioithieu container media px-5 py-1">
        <h4 style="color: rgb(83, 159, 192); margin-top: 20px">Giới thiệu</h4>
        <p>Chào mừng các mom và dad đến với thế giới thời trang đầy màu sắc dành cho các bé tại cửa hàng của chúng tôi!</p>
        
        <p>Chúng tôi rất tự hào giới thiệu không gian thời trang đặc biệt dành cho những thiên thần nhỏ của bạn. Cửa hàng thời trang trẻ em của chúng 
            tôi không chỉ là nơi để mua sắm, mà còn là hành trình khám phá với những bộ trang phục vô cùng đáng yêu và đầy sáng tạo.</p>
        
        <p>Với tình yêu thương và sự tận tâm, chúng tôi cam kết mang đến cho gia đình bạn những lựa chọn thời trang đa dạng và an toàn nhất cho bé yêu. 
            Từ những bộ quần áo thoải mái, phụ kiện đáng yêu đến những đôi giày nhẹ và êm, chúng tôi không chỉ theo đuổi xu hướng mà còn tôn vinh sự vui 
            tươi và tinh thần sáng tạo của trẻ em.</p>
        
        <p> Hãy đồng hành cùng chúng tôi trên hành trình khám phá thế giới thời trang cho những thiên thần nhỏ của bạn, nơi mỗi bức hình là một câu chuyện
            về niềm vui và phong cách.</p>
         <div class="img_main" style="margin-bottom: 20px">
    <?php 
    $imageDisplayed = false; 

    foreach ($post->get_val('img_main') as $key => $val) {
        if (!$imageDisplayed) {
            extract($val);
            echo '<img src="' . IMAGE . 'main1.jpeg" alt="" class="d-block image_banner" style="width:100%">';
            $imageDisplayed = true; 
        }
    }
    ?>
</div>
        <h5 style="color: #c0392b">Tầm nhìn</h5>

        <p>Chúng tôi, Kiukuie, khao khát trở thành điểm đến hàng đầu trên internet, nơi cung cấp những sản phẩm thời trang trẻ em uy tín, chất lượng và 
        xuất sắc nhất cho các gia đình trên khắp đất nước.</p>

        <h5 style="color: #c0392b">Sứ mệnh</h5>

        <p>Sứ mệnh của chúng tôi không chỉ dừng lại ở việc mang đến cho trẻ em niềm vui và tự tin thông qua thời trang đẹp mắt. Chúng tôi cam kết tạo nên
            một không gian mua sắm an toàn, tràn đầy sự tận tâm và chăm sóc đặc biệt dành cho các bậc phụ huynh và các bé. Chúng tôi hiểu rằng việc lựa chọn 
            trang phục cho trẻ em không chỉ là về phong cách mà còn là về sự thoải mái và an toàn. Do đó, mỗi sản phẩm trong cửa hàng của chúng tôi không chỉ 
            được chọn lọc kỹ lưỡng về mặt thiết kế mà còn đảm bảo an toàn cho sức khỏe của trẻ.</p>
        <p>Chúng tôi không chỉ là nơi mua sắm, mà còn là điểm đến để chia sẻ niềm đam mê với cộng đồng. Bằng cách tổ chức các sự kiện, chúng tôi mong muốn kết 
            nối và tạo ra những kỷ niệm đặc biệt cho các gia đình. Hãy đồng hành cùng chúng tôi, nơi mà thế giới thú vị và màu sắc của thời trang trẻ em được 
            khám phá mỗi ngày, đồng thời giúp chúng lớn lên với niềm tin vào bản thân và sự độc đáo của mình.</p>
        <div class="img_main" style="margin-bottom: 20px">
    <?php 
    $imageDisplayed = false; 

    foreach ($post->get_val('img_main') as $key => $val) {
        if (!$imageDisplayed) {
            extract($val);
            echo '<img src="' . IMAGE . 'main2.jpeg" alt="" class="d-block image_banner" style="width:100%">';
            $imageDisplayed = true; 
        }
    }
    ?>
</div>

        <h5 style="color: #c0392b">Đội ngũ nhân viên</h5>

        <p>Với đội ngũ nhân viên nhiệt huyết, giàu kinh nghiệm và tận tâm, chúng tôi sẽ luôn sẵn sàng tư vấn và hỗ trợ bạn trong việc lựa chọn 
            những trang phục dành cho các bé yêu của bạn. Bạn sẽ trải nghiệm mua sắm dễ dàng, thú vị và đáng nhớ tại cửa hàng thời trang trẻ em 
            của chúng tôi.</p>

        <h5 style="color: #c0392b">Chất lượng và độ tin cậy</h5>

        <p>Không chỉ đưa đến những bộ trang phục thời trang hàng đầu cho trẻ em, chúng tôi còn cam kết về chất lượng và độ tin cậy. Mỗi sản phẩm 
            bạn chọn mua đều được đảm bảo đạt chuẩn cao nhất, mang lại sự hài lòng tuyệt đối cho cả bé và phụ huynh.</p>
        
        <h5 style="color: #c0392b">Phong cách sống</h5>

        <p>Với chúng tôi, mua sắm không chỉ là việc chọn lựa trang phục mà còn là trải nghiệm một phong cách sống cho trẻ em. Hãy đến với cửa hàng 
            thời trang trẻ em của chúng tôi để giúp bé thể hiện cá tính và tự tin trong từng bước đi. Chúng tôi rất hân hạnh được đồng hành cùng gia 
            đình bạn trên hành trình khám phá vẻ đẹp thời trang và phong cách độc đáo của từng đứa trẻ.</p>

        </div>

<?php endforeach;
} ?>