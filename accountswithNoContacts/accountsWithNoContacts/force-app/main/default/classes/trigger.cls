Trigger Example1 on Contact (After Delete) {
    List<id> ids = new List<id>();
    for(Contact c : Trigger.old){
    if(c.AccountId != null){
    ids.add(c.AccountId);
    list<Contact> con = [select lastname,accountid,id from contact where
    accountid in : ids];
    if(con.size() == 0){
    Account a = [select name,id from account where id in : ids];
    Delete a;
    }
    }
    }
    }
    