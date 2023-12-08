package com.example;

import java.util.List;


public interface MarketService {
    public int insertMarket(MarketVO vo);
    public int deleteMarket(int seq);
    public int updateMarket(MarketVO vo);
    public MarketVO getMarket(int seq);
    public List<MarketVO> getMarketList() ;
}
