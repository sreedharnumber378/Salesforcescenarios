trigger Stage_Trigger on Opportunity (before insert) {
    list<opportunity> opty = trigger.new;
for(opportunity o : opty){
    if(o.stagename == 'prospecting'){
        o.closedate = system.today()+15;
        o.type = 'new customer';
    }
}

}