use auction;
delimiter $$ 
create trigger trigger1 after insert on orders for each row begin delete from paperquilling where paperquilling.desc=new.desc;
end $$