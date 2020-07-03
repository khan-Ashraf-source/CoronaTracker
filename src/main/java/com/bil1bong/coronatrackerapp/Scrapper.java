/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bil1bong.coronatrackerapp;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/**
 *
 * @author ash
 */
public class Scrapper {
    public static ArrayList<String> getData(String country) throws IOException{
        String url="https://www.worldometers.info/coronavirus/country/"+country+"/";
        Document doc=Jsoup.connect(url).get();
        ArrayList<String> list=null;
        if(doc==null){
            return null;
        }
//        #maincounter-wrap
        Elements elements=doc.select("#maincounter-wrap");
        if(elements!=null){
            list=new ArrayList<String>();
            list.add(country);
            for(Element e:elements){
                String text=e.select("h1").text();
                String count=e.select(".maincounter-number>span").text();
                list.add(count);
            }
        }
        return list;
    }
}
