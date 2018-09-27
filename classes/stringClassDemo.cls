public class stringClassDemo {

    public void mymmethod(String j){
        System.debug(j.abbreviate(10));
        System.debug(j.capitalize());
        System.debug(j.center(30));
        System.debug(j.center(30, '.'));
        System.debug(j.charAt(0));
        system.debug(j.compareTo('Swapna'));
        System.debug(j.contains('jyothsna'));
        System.debug(j.containsAny('jswqkl'));
        System.debug(j.containsIgnoreCase('JYOTHSNA'));
        System.debug(j.containsNone('vw'));
        System.debug(j.containsOnly('jyothsna'));
        System.debug(j.containsWhitespace());
        System.debug(j.countMatches('jyothsna'));
        System.debug(j.deleteWhitespace());
        System.debug(j.difference('Swapna'));
        System.debug(j.endsWith('Jogi'));
        System.debug(j.endsWithIgnoreCase('jogi'));
        System.debug(j.equals('jyothsna Jogi'));
        System.debug(j.equalsIgnoreCase('JYOTHSNA JOGI'));
        System.debug(j.escapeCsv());
         System.debug(j.isAllLowerCase());
        System.debug(j.isAllUpperCase());
        System.debug(String.isBlank(j));
        System.debug(String.isEmpty(j));
        System.debug(String.isNotBlank(j));
        System.debug(String.isNotEmpty(j));
        System.debug(j.isWhitespace());
       /* System.debug();
        System.debug();
        System.debug();
        System.debug();
        System.debug();
        System.debug();
        System.debug();
        System.debug();
        System.debug();
       */
    }
}