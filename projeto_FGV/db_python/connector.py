import mysql.connector
import pandas as pd

try:
    conn = mysql.connector.connect(host='177.104.61.65', user='fgv', password='fgv', database='stockfgv')

    sql_querry = """select s.date_ as 'date', 
        p.shares, p.symbol, 
        s.close, 
        ROUND(s.close * p.shares, 2) total 
        from stockfgv.stocks s 
        INNER JOIN stockfgv.portfolio p ON p.symbol = s.symbol 
        WHERE s.date_ = '2020-06-12';"""

    cursor = conn.cursor()
    cursor.execute(sql_querry)
    records = cursor.fetchall()

    #for row in records:
       # print('Data: ', row[0])
        #print('Shares: ', row[1])
       # print('Symbol: ', row[2])
        #print('Close: ', row[3])
        #print('Total: ', row[4], '\n')

    print('====== DATAFRAME ======\n')

    df = pd.DataFrame(records)
    #df.columns=['Data', 'Shares', 'Symbol', 'Close', 'Total']
    
    print(df)
    
    df.to_csv('portfolio.csv', index=False, header=False)

except mysql.connector.Error as e:
    print('Erro', e)

finally:
    if conn.is_connected():
        conn.close()
        cursor.close()
        print('Sessão encerrada')