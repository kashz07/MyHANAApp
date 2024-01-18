using {db} from '../db/datamodel';


service DataProtectionTool {
    @requires: 'authenticated-user'
    entity ThirdParty as projection on db.datamodel.thirdparty;
    @requires: 'Admin'
    @restrict: [{ grant: 'READ', where: 'LANGU = ''190'''}]
    entity System as projection on db.datamodel.system;
    entity Process as projection on db.datamodel.process;
    entity BusinessUnit as projection on db.datamodel.businessunit;
    entity BusinessProcess as projection on db.datamodel.businessprocess;
    entity MacroProcess as projection on db.datamodel.macroprocess;

}
