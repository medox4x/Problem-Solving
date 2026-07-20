class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        i=0
        index = 0
        char = ""
        prefix = ""
        while i < len(min(strs)):
            char += strs[0][i]
            print(char)
            for word in strs:
                if char == word[i]:
                    index += 1
            if index == len(strs):
                prefix += char
                char = ""
                index = 0
                i += 1
            else :
                break       
        return prefix
        


            