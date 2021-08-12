use auction;
delimiter $$ 
create trigger trigger2 after insert on orders for each row begin delete from silk where silk.desc=new.desc;
end $$