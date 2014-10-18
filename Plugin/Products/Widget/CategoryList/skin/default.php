<div class="categories-menu">
	<?php 
		foreach ($categories as $category) {
			if ($category["parentId"] == -1) {
				echo "<div class='main-category'><a href='#'>" . $category["name"] . "</a></div>";
			}
			else
			{
				echo "<div class='sub-category'><a href='#'>" . $category["name"] . "</a></div>";
			}
		}
	?>
</div>