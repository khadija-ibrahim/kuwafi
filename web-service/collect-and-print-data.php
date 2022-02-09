	<?php
				if (!isset($_GET['prod_code'])) {
					
					for ($i = 0; $i < sizeof($data); $i++) { 
    ?>
					 <figure class="col-xs-12 col-md-6 col-lg-3">
					    <img class="pic" src="<?php print_r($data[$i]['prod_image'])?>">
					    <figcaption>
					        <ul>
					            <li class="info"><?php print_r($data[$i]['prod_name']);?></li>
					            <li class="info"><?php print_r($data[$i]['prod_price']);?></li>
					        </ul>
					    </figcaption>
					 </figure>
						
						<?php
					}
					
				} else {
					
					for ($i = 0; $i < sizeof($data); $i++) {
						
						if ($_GET['prod_code'] === $data[$i]['prod_code']){ 
                        ?>
						<figure class="col-xs-12 col-md-6 col-lg-3">
					    <img class="pic" src="<?php print_r($data[$i]['prod_image'])?>">
					    <figcaption>
					        <ul>
					            <li class="info"><?php print_r($data[$i]['prod_name']);?></li>
					            <li class="info"><?php print_r($data[$i]['prod_price']);?></li>
					        </ul>
					    </figcaption>
					 </figure>
							<?php
				
						}
					}
				}
				
				            ?>