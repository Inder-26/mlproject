import sys

def error_message_detail(error,error_detail:sys):
    _,_,exc.tb=error_detail.exc_info()
    file_name=exc_tb.tb_frame.f_code.co_filename
    eror_message="Error occuredd in python script name [{0}] line number [{1}] eror meaage [{2}]".format()