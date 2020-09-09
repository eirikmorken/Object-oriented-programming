package interfaces;

import java.util.Iterator;
import java.util.function.BinaryOperator;

public class BinaryComputingIterator implements Iterator<Double>{
	Iterator<Double> iterator1_g;
	Iterator<Double> iterator2_g;
	BinaryOperator<Double> operator_g;
	Double default1_g;
	Double default2_g;
	public BinaryComputingIterator(Iterator<Double> iterator1,Iterator<Double> iterator2,BinaryOperator<Double>operator){
		this.operator_g=operator;
		this.iterator1_g=iterator1;
		this.iterator2_g=iterator2;
		
	}
	public BinaryComputingIterator(Iterator<Double> iterator1,Iterator<Double> iterator2,Double default1,Double default2,BinaryOperator<Double>operator){
		this.operator_g=operator;
		this.iterator1_g=iterator1;
		this.iterator2_g=iterator2;
		this.default1_g=default1;
		this.default2_g=default2;
		
	}

	@Override
	public boolean hasNext() {
		if(iterator1_g.hasNext()&&iterator2_g.hasNext()){
			return true;
		}else if (iterator1_g.hasNext()&&!iterator2_g.hasNext()){
			if (default2_g==null){
				return false;
			}
			return true;
		}else if (iterator2_g.hasNext()&&!iterator1_g.hasNext()){
			if(default1_g==null){
				return false;
			}
			return true;
		}
		return false;
	}

	@Override
	public Double next() {
		/*if((!iterator1_g.hasNext())&&!iterator2_g.hasNext()){
			return null;
		}else*/ if(iterator1_g.hasNext()&&!iterator2_g.hasNext()){
			return operator_g.apply(iterator1_g.next(), default2_g);
		}else if (iterator2_g.hasNext()&&!iterator1_g.hasNext()){
			return operator_g.apply(default1_g, iterator2_g.next());
		}
		return operator_g.apply(iterator1_g.next(),iterator2_g.next());
	}
}
