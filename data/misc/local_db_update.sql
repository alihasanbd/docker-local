
mysql --user=policypak --password=Joom#PPK --database=dev_policypak < dev_policypak.sql

 
UPDATE wp_swiz_options SET option_value = replace(option_value, 'www.mobilityroadsideassistance.com', 'local.mobilityroadsideassistance.com') 
WHERE option_name = 'home' OR option_name = 'siteurl';
UPDATE wp_swiz_postmeta SET meta_value = replace(meta_value, 'www.mobilityroadsideassistance.com', 'local.mobilityroadsideassistance.com');
UPDATE wp_swiz_posts SET post_content = replace(post_content, 'www.mobilityroadsideassistance.com', 'local.mobilityroadsideassistance.com');
UPDATE wp_swiz_posts SET guid = replace(guid, 'www.mobilityroadsideassistance.com', 'local.mobilityroadsideassistance.com'); 

 

UPDATE wp_jlro_options SET option_value = replace(option_value, 'https://mobilitysupportsolutions.com', 'http://local.mobilitysupportsolutions.com') 
WHERE option_name = 'home' OR option_name = 'siteurl';
UPDATE wp_jlro_postmeta SET meta_value = replace(meta_value, 'https://mobilitysupportsolutions.com', 'http://local.mobilitysupportsolutions.com');
UPDATE wp_jlro_posts SET post_content = replace(post_content, 'https://mobilitysupportsolutions.com', 'http://local.mobilitysupportsolutions.com');
UPDATE wp_jlro_posts SET guid = replace(guid, 'https://mobilitysupportsolutions.com', 'http://local.mobilitysupportsolutions.com'); 


  