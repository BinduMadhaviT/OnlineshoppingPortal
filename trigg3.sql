use auction;
delimiter $$ 
create trigger trigger3 after insert on orders for each row begin delete from gifts where gifts.desc=new.desc;
end $$