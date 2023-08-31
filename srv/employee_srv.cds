using {my.registration as db} from '../db/employee-sr';

service CatalogService @(path: 'service/catalog') {

    entity Employees @(restrict:[
        { grant: ['READ'], to: 'RiskViewer'},
        { grant: ['*'], to: 'RiskManager' }
    ]) as projection on db.Employees;
    
    entity Department as projection on db.Department;
    entity Project as projection on db.Project;
    entity Country  @(restrict:[
        { grant: ['READ'], to: 'RiskViewer'},
        { grant: ['*'], to: 'RiskManager' }
    ]) as projection on db.Country;
    entity Lead as projection on db.Lead;
}