</div><!-- FOOTER FIX [END] -->

<!-- FOOTER -->
<?php if ($scroll_to_top) { ?>
	<a href="#" class="scroll-to-top js-stt" style="<?php echo $scroll_to_top_pos; ?>: 0;"><svg class="icon-chevron-top"><use xmlns:xlink="https://www.w3.org/1999/xlink" xlink:href="#chevron-small-left"></use></svg></a>
<?php } ?>

<?php if ($this_url != '/contact-us/') { ?>
<div class="title-h2 text-center">Адрес магазина</div>
<div class="js-yamap-wrapper">
<div class="js-yamap" id="js-yamap"></div>
</div>
<?php } ?>
<?php if ($footer_type == 1) { ?>
<footer class="footer footer--min">
	<div class="footer__top">
		<div class="container">
			<div class="footer__top-inner">
				<div class="subscribe subscribe--dark">
					<?php  if($subscribe_status) { ?>
					<noindex>
					<div class="subscribe__heading">
						<span class="subscribe__title">
						Отправьте заявку на индивидуальный заказ
						</span>
						<span class="subscribe__subtitle">
						 и получите скидку от 20%
						</span>
					</div>
					<div class="subscribe__form">
						
							<span class="fake-input">
								<input type="email"  name="emailsubscr" value="" placeholder="<?php echo $text_footer_subscribe_email;  ?>">
								<button type="button" class="subscribe__btn" title="<?php echo $text_lightshop_subscribe_btn;  ?>">
								<svg class="icon-plane">
									<use xlink:href="#direction"></use>
								</svg>
								</button>
							</span>
						
					</div>
					</noindex>
					<?php } ?>
				</div>
			</div>
		</div>
	</div>
	<div class="footer__bottom">
		<div class="container">
			<div class="footer__bottom-inner">
				<div class="footer__social">
				<?php  if($soc_stat) { ?>
					<?php  if(isset($social_navs)) { ?>
						<ul class="social">
								<?php  foreach ($social_navs as $key => $social_nav) { ?>
									<li class="social__item">
										<a href="<?php echo $social_nav['link']; ?>" target="<?php echo $social_nav['attr']; ?>" class="social__link" rel="nofollow">
												<svg class="icon-fb">
													<use xlink:href="#<?php echo strtolower($social_links[$social_nav['settype']]); ?>"></use>  
												</svg>
										</a>
									</li>								
								<?php } ?>
						</ul>
					  <?php } ?>
				  <?php } ?>
				</div>
				<div class="footer__numbers">
					<div class="footer__numbers-nums">
					<?php if ($phone_1) { ?>
						<a <?php echo 'href="tel:' . preg_replace('/[^0-9]/', '', $phone_1) . '"';?> class="footer__num">
							<?php echo $phone_1; ?>
						</a>
					<?php } ?>
					<?php if ($phone_2) { ?>
						\
						<a <?php echo 'href="tel:' . preg_replace('/[^0-9]/', '', $phone_2) . '"';?> class="footer__num">
							<?php echo $phone_2; ?>
						</a>
					<?php } ?>	
					</div>
					<?php if ($callback_status) { ?>
					<div class="footer__call">
						<a class="btn btn--transparent btn--sm footer__call-btn js-fancy-popup" href="#inline1"><?php echo $text_header_callback; ?></a>
					</div>
					<div id="inline1" style="display:none;"><?php echo $callback; ?></div>
					<?php } ?>	
				</div>
			</div>
		</div>
	</div>
	<span class="body-overlay"></span>
	<span class="body-overlay-filter"></span>
	</footer><!-- FOOTER END -->
<?php } else { ?>	
<footer class="footer">
<?php  if($subscribe_status) { ?>
<noindex>
	<div class="footer__top">
		<div class="container">
			<div class="footer__top-inner">
				<div class="subscribe">
					<div class="subscribe__heading">
						<span class="subscribe__title">
						Отправьте заявку на индивидуальный заказ
						</span>
						<span class="subscribe__subtitle">
						 и получите скидку от 10%
						</span>
					</div>
				
					<div class="subscribe__form">
							
							<span class="fake-input">
								<input type="email"  name="emailsubscr" value="" placeholder="<?php echo $text_footer_subscribe_email;  ?>">
								<button type="button" class="subscribe__btn" title="<?php echo $text_lightshop_subscribe_btn;  ?>">
								<svg class="icon-plane">
									<use xlink:href="#direction"></use>
								</svg>
								</button>
							</span>
						
					</div>
				</div>
			</div>
		</div>
	</div>
</noindex>
<?php } ?>
	<div class="footer__bottom">
		<div class="container">
			<div class="footer__bottom-inner">
				<div class="footer__lists">
						<?php  foreach ($footer_navs as $key => $footer_nav) {  ?>
						 <?php if ($key == 1) { ?>
						 <noindex>
						 <?php } ?>
						  <div class="footer__lists-item">
							<span class="footer__list-title">
								<?php echo $footer_nav['language'][$language_id]['name']  ?>
							</span>						   

						   <?php if ($footer_nav['settype']) { ?>
								<div><?php echo html_entity_decode($footer_nav['type'][$footer_nav['settype']]['links']['html']); ?></div>
						   <?php } else { ?>
						   <ul class="footer__list">
							   <?php  foreach ($footer_nav['type'][$footer_nav['settype']]['links'] as $id => $link) { ?>
								 <li class="footer__list-item tz_fix_<?php echo $id ?>"><a href="<?php echo $link; ?>" class="footer__link" <?php if(isset($top_links[$id]['target'])){ ?>target="<?php echo $top_links[$id]['target']; ?>" <?php } ?>><?php echo isset($top_links[$id]) ? key($top_links[$id]) : ''; ?></a></li>
							   <?php } ?>						   
						   </ul>
						   <?php } ?>
						  </div>
						  <?php if ($key == 1) { ?>
						  </noindex>
						  <?php } ?>				
						<?php } ?>	
						
				<?php  if($soc_stat) { ?>
					<?php  if(isset($social_navs)) { ?>
						<div class="footer__lists-item">
							<span class="footer__list-title">
								<?php echo $text_social_navs; ?>
							</span>
							<ul class="footer__list">
								<?php  foreach ($social_navs as $key => $social_nav) { ?>
									<li class="footer__list-item fix_$key">
										<a href="<?php echo $social_nav['link']; ?>" class="footer__list-icon" rel="nofollow">
											<span class="footer__link-icon">
												<svg class="icon-fb">
													<use xlink:href="#<?php echo strtolower($social_links[$social_nav['settype']]); ?>"></use> 
												</svg>
											</span>
										</a>
										<a href="<?php echo $social_nav['link']; ?>" target="<?php echo $social_nav['attr']; ?>" class="footer__link" rel="nofollow">
											<span class="footer__link-text"><?php echo $social_nav['language'][$language_id]['name']; ?></span>
										</a>
									</li>								
								<?php } ?>
							</ul>
						</div>
					<?php } ?>
				<?php } ?>
				</div>
				<div class="footer__info">					
					<?php if ($footer_t_logo || $footer_logo) { ?>
					<span class="footer__logo">
						<?php if ($footer_logo) { ?>
						<a <?php echo $home == $og_url ? '' : 'href="' . $home .'"' ?> class="footer__logo-link" ><img src="<?php echo $footer_logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>"></a>
						<?php } else { ?>
						<a <?php echo $home == $og_url ? '' : 'href="' . $home .'"' ?> class="footer__logo-link"><?php echo $text_logo; ?></a>
						<?php } ?>
					</span>
					<?php } ?>
					<span class="footer__info-text">
					<span class="contact-footer footer__address"><svg class="icon-location-pin">
							<use xlink:href="#location-pin"></use>
						</svg><a href="/contact-us/"> г. Санкт-Петербург, пос. Саперный, территория предприятия «Балтика» </a></span>
					<span class="contact-footer footer__call-phones"> <svg class="icon-phone">
							<use xlink:href="#phone"></use>
						</svg><a href="tel:78127482120" rel="nofollow"> +7 (812) 748-21-20</a></span>
					<span class="contact-footer footer__mail"><svg class="icon-mail">
							<use xlink:href="#mail"></use>
						</svg><a href="mailto:info@zashkafom.online" class="contacts__mail">
							<span>info@zashkafom.online</span>
						</a></span>
						<?php echo $footer_text; ?>
					</span>
					<span class="copyright">
						<?php echo $footer_copyright; ?>
					</span>
				</div>
			</div>
		<div class="copyright text-center" style="padding-top: 20px;"> © <?php echo date('Y'); ?> “За шкафом” - интернет-магазин мебели для дома</div>
		</div>
	</div>			
	<span class="body-overlay">
	</span>
	<span class="body-overlay-filter"></span>
	</footer><!-- FOOTER END -->

<?php } ?>

<script defer src="catalog/view/javascript/theme_lightshop/functions.min.js<?php echo '?v'.$version; ?>"></script>
<?php if ($this_url != '/contact-us/') { ?>
<script src="catalog/view/javascript/theme_lightshop/jquery-2.2.4.min.js<?php echo '?v'.$version; ?>"></script>
<script defer src="catalog/view/javascript/theme_lightshop/footermap.js<?php echo '?v'.$version; ?>"></script>
<script>
document.addEventListener('DOMContentLoaded', function(){ 
	setTimeout(function() { recomSlider();simpleSlider() }, 1000);
	
	$('.open-menu').on('click', function(){
		if($(this).hasClass('active-open')) {
			$(this).removeClass('active-open');
			$('#popup-navigation').removeClass('active');
			$('#popup-navigation').removeClass('visible');
		}else{
			$(this).addClass('active-open');
			$('#popup-navigation').addClass('active');
			$('#popup-navigation').addClass('visible');
		}
		
	});
});


<?php } ?>
<script defer src="catalog/view/javascript/theme_lightshop/jquery-ui.min.js<?php echo '?v'.$version; ?>"></script>
<script defer src="catalog/view/javascript/theme_lightshop/widgets.js<?php echo '?v'.$version; ?>"></script>

<div id="svg-icon" style="position:absolute;left:-9999px">
<svg xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink">
<symbol viewBox="0 0 18 20" id="User"> <path d="M6.7,2.1c-1,0.8-1.3,2-1.2,2.6c0.1,0.8,0.2,1.8,0.2,1.8S5.4,6.7,5.4,7.4c0.1,1.7,0.7,1,0.8,1.7c0.3,1.8,0.9,1.5,0.9,2.5
c0,1.6-0.7,2.4-2.8,3.3C2.2,15.8,0,17,0,19v1h18v-1c0-2-2.2-3.2-4.3-4.1c-2.1-0.9-2.8-1.7-2.8-3.3c0-1,0.6-0.7,0.9-2.5
c0.1-0.8,0.7,0,0.8-1.7c0-0.7-0.3-0.9-0.3-0.9s0.2-1,0.2-1.8c0.1-0.8-0.4-2.6-2.3-3.1c-0.3-0.3-0.6-0.9,0.5-1.4
C8.4,0.1,7.9,1.3,6.7,2.1z"/></symbol>
<symbol viewBox="0 0 20 20" id="add-to-list"><path d="M19.4 9H16V5.6c0-.6-.4-.6-1-.6s-1 0-1 .6V9h-3.4c-.6 0-.6.4-.6 1s0 1 .6 1H14v3.4c0 .6.4.6 1 .6s1 0 1-.6V11h3.4c.6 0 .6-.4.6-1s0-1-.6-1zm-12 0H.6C0 9 0 9.4 0 10s0 1 .6 1h6.8c.6 0 .6-.4.6-1s0-1-.6-1zm0 5H.6c-.6 0-.6.4-.6 1s0 1 .6 1h6.8c.6 0 .6-.4.6-1s0-1-.6-1zm0-10H.6C0 4 0 4.4 0 5s0 1 .6 1h6.8C8 6 8 5.6 8 5s0-1-.6-1z"/></symbol><symbol viewBox="0 0 18.3 11" id="arrow-long-right"><path d="M13 11V7.5H0v-4h13V0l5.3 5.5L13 11z"/></symbol><symbol viewBox="0 0 27 26" id="burger"><defs><clipPath id="ada"><path d="M18 75h21a3 3 0 0 1 3 3v19a3 3 0 0 1-3 3H18a3 3 0 0 1-3-3V78a3 3 0 0 1 3-3z" fill="#fff"/></clipPath></defs><path d="M18 75h21a3 3 0 0 1 3 3v19a3 3 0 0 1-3 3H18a3 3 0 0 1-3-3V78a3 3 0 0 1 3-3z" fill="none" stroke-dasharray="0" stroke="#2a77ed" stroke-miterlimit="50" stroke-width="2" clip-path="url(#a&quot;)" transform="translate(-15 -74)"/><path d="M8 9.999v-1h11v1zm0 4v-1h6.602v1zm0 4v-1h11v1z" fill="#2a77ed"/></symbol><symbol viewBox="0 0 18 18" id="calendar"><path d="M16 2h-1v2h-3V2H6v2H3V2H2C.9 2 0 2.9 0 4v12c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V4c0-1.1-.9-2-2-2zm0 14H2V8h14v8zM5.5 0h-2v3.5h2V0zm9 0h-2v3.5h2V0z"/></symbol><symbol viewBox="0 0 5.2 9.2" id="chevron-small-left"><path d="M5 8c.3.3.3.7 0 1-.3.3-.7.3-1 0L.2 5.1c-.3-.3-.3-.7 0-1L4 .2c.3-.3.7-.3 1 0 .3.3.3.7 0 1L1.9 4.6 5 8z"/></symbol><symbol viewBox="0 0 20 14" id="credit-card"><path d="M18 0H2C.9 0 0 .9 0 2v10c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V2c0-1.1-.9-2-2-2zm0 12H2V6h16v6zm0-9H2V2h16v1zM4 8.1v.6h.6v-.6H4zm3.6 1.2v.6h1.2v-.6h.6v-.6h.6v-.6H8.8v.6h-.6v.6h-.6zm2.4.6v-.6h-.6v.6h.6zm-3 0v-.6H5.8v.6H7zm.6-1.2h.6v-.6H7v1.2h.6v-.6zm-2.4.6h.6v-.6h.6v-.6H5.2v.6h-.6v.6H4v.6h1.2v-.6z"/></symbol><symbol viewBox="0 0 17.2 17.2" id="direction"><path d="M17 .2c-.6-.6-1.1 0-3 .9C8.8 3.6 0 8.5 0 8.5l7.6 1.1 1.1 7.6s5-8.8 7.4-13.9C17 1.4 17.5.8 17 .2zm-1.9 2L9.6 12.4l-.5-4.6 6-5.6z"/></symbol><symbol viewBox="0 0 17.2 14" id="heart"><path d="M15.8 1.2c-1.7-1.5-4.4-1.5-6.1 0l-1.1 1-1.1-1C5.8-.3 3.1-.3 1.4 1.2c-1.9 1.7-1.9 4.5 0 6.2L8.6 14l7.2-6.6c1.9-1.7 1.9-4.5 0-6.2z"/></symbol><symbol viewBox="0 0 20 20" id="list"><path d="M14.4 9H8.6c-.552 0-.6.447-.6 1s.048 1 .6 1h5.8c.552 0 .6-.447.6-1s-.048-1-.6-1zm2 5H8.6c-.552 0-.6.447-.6 1s.048 1 .6 1h7.8c.552 0 .6-.447.6-1s-.048-1-.6-1zM8.6 6h7.8c.552 0 .6-.447.6-1s-.048-1-.6-1H8.6c-.552 0-.6.447-.6 1s.048 1 .6 1zM5.4 9H3.6c-.552 0-.6.447-.6 1s.048 1 .6 1h1.8c.552 0 .6-.447.6-1s-.048-1-.6-1zm0 5H3.6c-.552 0-.6.447-.6 1s.048 1 .6 1h1.8c.552 0 .6-.447.6-1s-.048-1-.6-1zm0-10H3.6c-.552 0-.6.447-.6 1s.048 1 .6 1h1.8c.552 0 .6-.447.6-1s-.048-1-.6-1z"/></symbol><symbol viewBox="0 0 10 16" id="location-pin"><path d="M5 0C2.2 0 0 2.2 0 5c0 4.8 5 11 5 11s5-6.2 5-11c0-2.8-2.2-5-5-5zm0 7.8c-1.5 0-2.7-1.2-2.7-2.7S3.5 2.4 5 2.4c1.5 0 2.7 1.2 2.7 2.7S6.5 7.8 5 7.8z"/></symbol><symbol viewBox="0 0 25 25" id="magnifying-glass"><path d="M21.7,20.3L18,16.6c3.1-3.9,2.5-9.5-1.4-12.7S7.1,1.5,4,5.3S1.5,14.9,5.3,18c3.3,2.6,8,2.6,11.3,0l3.7,3.7 c0.4,0.4,1,0.4,1.4,0c0,0,0,0,0,0C22.1,21.3,22.1,20.7,21.7,20.3z M11,18c-3.9,0-7-3.1-7-7s3.1-7,7-7s7,3.1,7,7S14.9,18,11,18z"/></symbol><symbol viewBox="0 0 18 12" id="mail"><path d="M.6 1.3c.5.3 7.2 3.9 7.5 4 .2.1.5.2.9.2.3 0 .7-.1.9-.2s7-3.8 7.5-4c.5-.3.9-1.3 0-1.3H.5c-.9 0-.4 1 .1 1.3zm17 2.2c-.6.3-7.4 3.8-7.7 4s-.6.2-.9.2-.6 0-.9-.2C7.8 7.3 1 3.8.4 3.5c-.4-.2-.4 0-.4.2V11c0 .4.6 1 1 1h16c.4 0 1-.6 1-1V3.7c0-.2 0-.4-.4-.2z"/></symbol><symbol viewBox="0 0 20 19" id="l-map"><path d="M19.4 3.1l-6-3c-.3-.1-.6-.1-.9 0L6.9 2.9 1.3 1.1C1 .9.7 1 .4 1.2c-.2.2-.4.5-.4.8v13c0 .4.2.7.6.9l6 3c.1.1.2.1.4.1s.3 0 .4-.1l5.6-2.8 5.6 1.9c.3.1.6 0 .9-.1.3-.2.4-.5.4-.8V4c.1-.4-.1-.7-.5-.9zM8 4.6l4-2v11.8l-4 2V4.6zM2 3.4l4 1.3v11.7l-4-2v-11zm16 12.2l-4-1.3V2.6l4 2v11z"/></symbol><symbol viewBox="0 0 16 16" id="phone"><path d="M9.2 9.2c-1.6 1.6-3.4 3.1-4.1 2.4-1-1-1.7-1.9-4-.1-2.3 1.8-.5 3.1.5 4.1 1.2 1.2 5.5.1 9.8-4.2 4.3-4.3 5.4-8.6 4.2-9.8-1-1-2.2-2.8-4.1-.5-1.8 2.3-.9 2.9.1 4 .7.7-.8 2.5-2.4 4.1z"/></symbol><symbol viewBox="0 0 22 22" id="shopping-cart"><path d="M19,7h-3V6c0-2.2-1.8-4-4-4S8,3.8,8,6v1H5C4.4,7,4,7.4,4,8v11c0,1.7,1.3,3,3,3h10c1.7,0,3-1.3,3-3V8C20,7.4,19.6,7,19,7z M10,6c0-1.1,0.9-2,2-2s2,0.9,2,2v1h-4V6z M18,19c0,0.6-0.4,1-1,1H7c-0.6,0-1-0.4-1-1V9h2v1c0,0.6,0.4,1,1,1s1-0.4,1-1V9h4v1 c0,0.6,0.4,1,1,1s1-0.4,1-1V9h2V19z"/></symbol><symbol viewBox="0 0 17.6 17.6" id="star-outlined"><path d="M17.6 6.7h-6.4L8.8 0 6.4 6.7H0l5.2 3.9-1.9 6.9 5.4-4.2 5.4 4.2-1.9-6.9 5.4-3.9zm-8.8 4.8l-3 2.5L7 10.4 4.2 8.1l3.5.1 1.1-4 1.1 4 3.5-.1-2.9 2.3 1.2 3.6-2.9-2.5z"/></symbol>
<symbol viewBox="0 0 20 11.4" id="vk"><path d="M17.8 8s1.6 1.6 2 2.3c.2.4.2.6.2.7-.1.3-.6.4-.7.4h-2.9c-.2 0-.6-.1-1.1-.4-.4-.3-.8-.7-1.1-1.1-.6-.6-1-1.2-1.5-1.2h-.2c-.4.1-.8.6-.8 2 0 .4-.3.7-.6.7H9.8c-.4 0-2.8-.2-4.8-2.3-2.5-2.7-4.8-8-4.8-8C.1.8.4.6.7.6h2.9c.2-.1.3.2.4.4.1.2.5 1.2 1.1 2.3 1 1.8 1.6 2.5 2.1 2.5.1 0 .2 0 .3-.1.6-.4.5-2.7.5-3.1 0-.1 0-1-.3-1.5C7.4.7 7 .6 6.8.6c0-.1.2-.3.3-.3C7.6 0 8.4 0 9.2 0h.4c.9 0 1.1.1 1.4.1.6.2.6.6.6 1.9V3.8c0 .7 0 1.5.5 1.8.1 0 .1.1.2.1.2 0 .7 0 2.1-2.4C15 2.2 15.5 1 15.5.9c0-.1.1-.2.2-.3.1 0 .2-.1.2-.1h3.4c.4 0 .6.1.7.2.1.2 0 .9-1.6 3-.3.3-.5.7-.7.9-1.4 1.9-1.4 2 .1 3.4z"/></symbol></svg>
</div>
<!-- SPRITE SVG END-->
	<?php if ($text_lightshop_cookieagry_btn) { ?>
		<?php if (!$islogged && !$cookieagry) { ?>
			<div class="cookieagry" style="display: block;">
				<div class="cookieagry__text">
					<?php echo $text_lightshop_cookieagry_btn;  ?>
					<a id="cookieagry" class="cookieagry__close">x</a>
				</div>	
			</div>
		<?php } ?>
	<?php } ?>
<script type="text/javascript">
window.dataLayer = window.dataLayer || [];
function sendYandexEcommerce(array, action) {
    if(typeof dataLayer == 'undefined')
        return false;
    if(action=="remove") {
        var product = [{
            "id": array['metrika_product_id'],
            "name": array['metrika_product_name'],
            "price": array['metrika_product_price']
        }];
    } else {
        var product = [{
            "id": array['metrika_product_id'],
            "name": array['metrika_product_name'],
            "price": array['metrika_product_price'],
            "brand": array['metrika_product_manufacturer'],
            "category": array['metrika_product_category'],
            "quantity": array['metrika_product_quantity']
        }];
    }
	
	//ym(55353475, 'reachGoal', 'addcart');
    if(action=="remove")
        dataLayer.push({"ecommerce": {"remove": {"products": product}}});
    else
        dataLayer.push({"ecommerce": {"add": {"products": product}}});
}
/*<!-- BEGIN JIVOSITE CODE {literal} -->
  setTimeout(function() {
    var script = document.createElement('script');
    script.async = 'async';
    script.setAttribute('jv-id', 'iA23SFkXaH');
    script.src = "//code.jivosite.com/widget.js";
    document.getElementsByTagName('head')[0].appendChild(script);
  }, 5500);
</script> 
<!-- Begin LeadBack code {literal} -->
<script>
    var _emv = _emv || [];
    _emv['campaign'] = '11a5b5ef81cff7d887970edf';
   setTimeout(function() { 
    (function() {
        var em = document.createElement('script'); em.type = 'text/javascript'; em.async = true;
        em.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'leadback.ru/js/leadback.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(em, s);
    })();
	}, 4000);
</script>
<!-- End LeadBack code {/literal} -->


<!--добавлено к раскрытию фильтра на мобиле-->
<!--
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
-->





