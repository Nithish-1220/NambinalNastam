package com.tradeshow.nambinalnastam.model.XSShacking;
import java.util.regex.*;

public class MessageXSSUtits {

    public boolean containsHtmlTag(String input) {
        if (input == null) return false;

        return input.matches(".*<[^>]+>.*");
    }


    public boolean containsScriptTag(String input) {
        if (input == null) return false;

        Pattern pattern = Pattern.compile(
                "<\\s*script[^>]*>(.*?)<\\s*/\\s*script\\s*>",
                Pattern.CASE_INSENSITIVE | Pattern.DOTALL
        );

        Matcher matcher = pattern.matcher(input);
        return matcher.find();
    }



}
