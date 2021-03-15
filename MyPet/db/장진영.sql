-- 굿즈 리스트 뷰

create or replace view vwGoods as
select
    tg.seqGoods as seqGoods,
    tgco.companyname as companyname,
    tgca.seqgoodscategory as seqCategory,
    tgca.category as category,
    tig.Image as image,
    tg.goodsname as name,
    tg.price as price
from tblGoods tg 
    inner join tblGoodsCompany tgco
        on tg.seqCompany = tgco.seqCompany
            inner join tblGoodsCategory tgca
                on tg.seqGoodsCategory = tgca.seqgoodscategory
                    inner join tblImageGoods tig
                        on tg.seqImage = tig.seqImageGoods;




-- 신고게시판 뷰
create or replace view vwReportBoard as 
select
    trb.seqReportBoard as seqReportBoard,
    trb.seqUser as seqUser,
    tu.name as name,
    trb.title as title,
    trb.writedate as writedate
from tblReportBoard trb
    inner join tblUser tu
        on trb.SeqUser = tu.seqUser;