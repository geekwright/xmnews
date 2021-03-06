<div class="xmnews">
    <{if $error_message}>
        <div class="alert alert-danger" role="alert"><{$error_message}></div>
    <{/if}>
    <{if $form}>
        <ol class="breadcrumb">
            <li><a href="index.php"><{$index_module}></a></li>
            <li><a href="action.php?op=add"><{$smarty.const._MA_XMNEWS_SELECTCATEGORY}></a></li>
            <li class="active"><{$smarty.const._MA_XMNEWS_ADD}></li>
        </ol>
        <div class="xmform">
            <{$form}>
        </div>
    <{/if}>
    <{if $categories > 0}>
        <ol class="breadcrumb">
            <li><a href="index.php"><{$index_module}></a></li>
            <li class="active"><{$smarty.const._MA_XMNEWS_SELECTCATEGORY}></li>
        </ol>
		<div class="xmnews-category row">
			<{foreach item=category from=$categories}>
				<div class="col-xs-12 col-sm-4 col-md-4 col-lg-3 xmnews-category-list">
					<a class="btn btn-primary btn-md btn-block" title="<{$category.name}>"
					   href="action.php?op=loadnews&category_id=<{$category.id}>">
						<{$category.name}>
					</a>

					<a title="<{$category.name}>" href="action.php?op=loadnews&category_id=<{$category.id}>" class="xmnews-category-image">
						<img src="<{$category.logo}>" alt="<{$category.name}>" >
					</a>

					<!-- Category Description -->
					<div class="aligncenter">
						<{if $category.description != ""}>
							<button class="btn btn-success btn-xs" data-toggle="modal" data-target="#xmDesc-<{$category.id}>">+</button>
						<{else}>
							<button class="btn btn-xs disabled" data-toggle="modal">+</button>
						<{/if}>
					</div>

					<div class="modal fade" id="xmDesc-<{$category.id}>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header"><h4 class="modal-title aligncenter"><{$category.name}></h4></div>
								<div class="modal-body">
									<{$category.description}>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">&times;</button>
								</div>
							</div>
						</div>
					</div>
					<!-- End Category Description -->
				</div>
				<!-- .xmnews-category-list -->
			<{/foreach}>
		</div><!-- .xmnews-category -->
		<div class="clear spacer"></div>
		<{if $nav_menu}>
			<div class="floatright"><{$nav_menu}></div>
			<div class="clear spacer"></div>
		<{/if}>
    <{/if}>
    
    
</div><!-- .xmarticle -->