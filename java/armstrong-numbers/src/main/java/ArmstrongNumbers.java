class ArmstrongNumbers {

    boolean isArmstrongNumber(int numberToCheck) {
        int pow = String.valueOf(numberToCheck).length();
        int sum = 0;
        int temp = numberToCheck;
        while (temp > 0){
            int reminder = temp % 10;
            // raise by pow
            sum += Math.pow(reminder, pow);
            // floor by 10
            temp = Math.floorDiv(temp, 10);
        }
        if (numberToCheck == sum){
            return true;
        } else{
            return false;
        }

    }

}
