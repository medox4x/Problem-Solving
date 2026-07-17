class Solution:
    def romanToInt(self, s: str) -> int:
        dic={"I" : 1,"V" : 5 ,"X" : 10,"L" : 50, "C":100,"D":500,"M":1000, "IV" : 4 , "IX" :9, "XL":40,"XC":90,"CD":400, "CM":900}
        s += "F"
        result = 0
        i = 0
        while s[i] != "F" :
            con = s[i] + s[i + 1]
            if con in dic:
                result += dic[con]
                i+=2
            else :
                result += dic[s[i]]
                i+=1
        return result
