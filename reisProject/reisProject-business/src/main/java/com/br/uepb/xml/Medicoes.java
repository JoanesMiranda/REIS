package com.br.uepb.xml;

import java.util.ArrayList;
import java.util.Map;

public class Medicoes {
	private DataList _dataList = null;
	private ArrayList<Pair<String,String>> medicoes = new ArrayList<Pair<String,String>>();
	
	public Medicoes(DataList dataList) {
		_dataList = dataList;
	}
	
	public ArrayList<Pair<String,String>> getMedicoes() {
		Pair<String,String> node = new Pair<String, String>(null, null);
		
		for (Entry entry : _dataList.getEntries()) {
			//Imprime a lista de meta de cada entidade
			getMeta(entry.getMeta());
			
			for(Entry sub : entry.getEntries()){
				getMeta(sub.getMeta());
				
				if(sub.getName().equals("Basic-Nu-Observed-Value")) {
					basic_nu(sub);
				}
				
				if(sub.getName().equals("Simple-Nu-Observed-Value")) {
					simple_nu(sub);
				}
				
				if ((sub.getName().equals("Compound-Basic-Nu-Observed-Value")) || (sub.getName().equals("Compound-Simple-Nu-Observed-Value"))) {
					compound_nu(sub);
				}
				
				if (sub.getName().equals("Absolute-Time-Stamp")) {
					absolute_time_stamp(sub);
				}
			}
			
		}
		return medicoes;
	}
	
	
	private void getMeta(Map<String, String> meta) {
		Pair<String,String> node = new Pair<String, String>(null, null);
		
		for (Map.Entry<String, String> e : meta.entrySet()) {			
			node.setFirst(e.getKey());
			node.setSecond(e.getValue());
			medicoes.add(node);			
		}
	}
	
	private void basic_nu(Entry sub) {
		Pair<String,String> node = new Pair<String, String>(null, null);
		node.setFirst("value");
		node.setSecond(sub.getValue());
		medicoes.add(node);		
	}

	private void simple_nu(Entry sub) {
		Pair<String,String> node = new Pair<String, String>(null, null);
		node.setFirst("value");
		node.setSecond(sub.getValue());
		medicoes.add(node);		
	}
	
	private void compound_nu(Entry sub) {
		Pair<String,String> node = new Pair<String, String>(null, null);
		String values = "(";
		String metricId = "";
		
		for(Entry sub_entries : sub.getEntries()){
			//getMeta(sub_entries.getMeta());
			if (values.length() > 1) {
				values += "|";
			}
			//Obtem os valores tipo "meta-data"
			metricId = sub_entries.getMeta().get("metric-id"); 
			values += "metric-id=" + metricId;
			
			if (values.length() > 1) {
				values += "|";
			}
			
			values += "value=" + sub_entries.getValue();
	    }
		
		values += ")";
		node.setFirst("value");
		node.setSecond(values);
		medicoes.add(node);			   
	}
	
	private void absolute_time_stamp(Entry sub) {
		String[] names = new String[] {"century", "year", "month", "day", "hour", "minute", "second", "sec_fractions"};
		String[] times = new String[names.length];
		
	    for(int i = 0; i < names.length; i++) {
	        times[i] = sub.getEntries_map().get(names[i]).getValue();
	    }
	    
	    //formatação da data
	    String ano = format(times[0])+format(times[1]);
	    String dia = format(times[3]);
	    String mes = format(times[2]);
	    String hora = format(times[4]);
	    String min = format(times[5]);
	    String seg = format(times[6]);
	    String milseg = format(times[7]);
		String data = dia+"/"+mes+"/"+ano+" "+hora+":"+min+":"+seg+":"+milseg;
				
		Pair<String,String> node = new Pair<String, String>(null, null);
		node.setFirst("dateTime");
		node.setSecond(data);
		medicoes.add(node);		
	}
	
	private String format(String value) {
		String name = value.trim();
		if (value.length() == 1) {
			name = "0"+value;
		}
		return name;
	}	
}
