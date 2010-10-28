<#include "/WEB-INF/pages/inc/header.ftl">
<title><@s.text name='manage.metadata.physical.title'/></title>
<#include "/WEB-INF/pages/macros/metadata.ftl"/>
<#assign sideMenuEml=true />
 <#assign currentMenu="manage"/>
<script type="text/javascript">
$(document).ready(function(){
	initHelp();
});   
</script>
<#include "/WEB-INF/pages/inc/menu.ftl">
<#include "/WEB-INF/pages/macros/forms.ftl"/>
<h1><@s.text name='manage.metadata.physical.title'/>: <em>${resource.title!resource.shortname}</em></h1>
<@s.text name='manage.metadata.physical.intro'/>
<form class="topForm" action="metadata-${section}.do" method="post">
	<div id="items">
		<#list eml.physicalData as item>
			<div id="item-${item_index}" class="item">
				<div class="newline"></div>
				<div class="right">
					<a id="removeLink-${item_index}" class="removeLink" href="">[ <@s.text name='manage.metadata.removethis'/> <@s.text name='manage.metadata.physical.item'/> ]</a>
			    </div>
			    <div class="newline"></div>
			    <div class="halfcolumn">
					<@input name="eml.physicalData[${item_index}].name" i18nkey="eml.physicalData.name"/>
				</div>
				<div class="halfcolumn">
					<@input name="eml.physicalData[${item_index}].charset" i18nkey="eml.physicalData.charset" help="i18n"/>
				</div>	
				<div class="newline"></div>
				<@input name="eml.physicalData[${item_index}].distributionUrl" i18nkey="eml.physicalData.distributionUrl" help="i18n"/>
				<div class="newline"></div>
			  	<div class="halfcolumn">
					<@input name="eml.physicalData[${item_index}].format" i18nkey="eml.physicalData.format" help="i18n"/>
				</div>
				<div class="halfcolumn">
					<@input name="eml.physicalData[${item_index}].formatVersion" i18nkey="eml.physicalData.formatVersion" help="i18n"/>
				</div>
				<div class="newline"></div>
			  	<div class="newline"></div>
				<div class="horizontal_dotted_line_large_foo" id="separator"></div>
				<div class="newline"></div>
		  	</div>
		</#list>
	</div>
	<a id="plus" href=""><@s.text name='manage.metadata.addnew'/> <@s.text name='manage.metadata.physical.item'/></a>
	<div class="newline"></div>
	<div class="newline"></div>
	<div class="buttons">
		<@s.submit name="save" key="button.save" />
		<@s.submit name="cancel" key="button.cancel" />
	</div>
	<!-- internal parameter -->
	<input name="r" type="hidden" value="${resource.shortname}" />	
</form>
<div id="baseItem" class="item" style="display:none;">
	<div class="newline"></div>
	<div class="right">
		<a id="removeLink" class="removeLink" href="">[ <@s.text name='manage.metadata.removethis'/> <@s.text name='manage.metadata.physical.item'/> ]</a>
    </div>
    <div class="newline"></div>
	<div class="halfcolumn">
		<@input name="name" i18nkey="eml.physicalData.name"/>
	</div>
	<div class="halfcolumn">
		<@input name="charset" i18nkey="eml.physicalData.charset" help="i18n"/>
	</div>
	<div class="newline"></div>
	<@input name="distributionUrl" i18nkey="eml.physicalData.distributionUrl" help="i18n"/>
	<div class="newline"></div>
	<div class="halfcolumn">
		<@input name="format" i18nkey="eml.physicalData.format" help="i18n"/>
	</div>
	<div class="halfcolumn">
		<@input name="formatVersion" i18nkey="eml.physicalData.formatVersion" help="i18n"/>
	</div>
	<div class="newline"></div>
	<div class="newline"></div>
	<div class="horizontal_dotted_line_large_foo" id="separator"></div>
	<div class="newline"></div>
</div>
<#include "/WEB-INF/pages/inc/footer.ftl">