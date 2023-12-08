package com.example;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MarketServiceImpl implements MarketService {


    @Autowired
     MarketDAO marketDAO;

    @Override
    public int insertMarket(MarketVO vo) {
        return marketDAO.insertMarket(vo);
    }

    @Override
    public int deleteMarket(int seq) {
        return marketDAO.deleteMarket(seq);
    }

    @Override
    public int updateMarket(MarketVO vo) {
        return marketDAO.updateMarket(vo);
    }

    @Override
    public MarketVO getMarket(int seq) {
        return marketDAO.getMarket(seq);
    }

    @Override
    public List<MarketVO> getMarketList() {
        return marketDAO.getMarketList();
    }
}
