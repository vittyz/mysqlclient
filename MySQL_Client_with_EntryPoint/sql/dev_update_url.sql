

update core_config_data set value='https://dtaconline-adm-dev.dtac.co.th/'
where value like 'https://dtaconline-adm-test.dtac.co.th/';

update core_config_data set value='https://dtaconline-dev.dtac.co.th/'
where value like 'https://dtaconline-test.dtac.co.th/';


select * from core_config_data
where 
value like 'https://dtaconline%' ;

