# -*- encoding : utf-8 -*-

require 'phrase/delegate'

class Phrase::Delegate::FastGettext < Phrase::Delegate::Base
  def initialize(method, *args)
    @method = method
    params = params_from_args(args)
    @display_key = params[:msgid]
  end
  
private
  def params_from_args(args)
    params = case @method
      when :_
        {msgid: args.first}
      when :n_
        {msgid: args.first, msgid_plural: args.second, count: args.last}
      when :s_
        {msgid: args.first}
      else
        self.class.log("Unsupported FastGettext method #{@method}")
        {}
    end
    params
  end
end