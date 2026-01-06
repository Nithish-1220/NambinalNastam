package com.tradeshow.nambinalnastam.action;

import com.opensymphony.xwork2.Action;
import com.tradeshow.nambinalnastam.model.MessageXSSUtits;



public class MessageXSSAction implements Action {

    private String message;
    private boolean dangerous;

    public String getMessage() {
        return message;
    }

    public boolean isDangerous() {
        return dangerous;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public String execute() {

        MessageXSSUtits mxssu = new MessageXSSUtits();
        dangerous = mxssu.containsHtmlTag(message)
                && mxssu.containsScriptTag(message);

        return SUCCESS;
    }
}

