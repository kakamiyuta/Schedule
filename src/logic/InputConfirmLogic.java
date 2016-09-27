package logic;


public class InputConfirmLogic {
	public static int getTime(String time){
		if(time.isEmpty()){
			return 0;
		}else{
			try{
				return Integer.parseInt(time);
			}catch(NumberFormatException e){
				return 0;
			}
		}
	}

}
