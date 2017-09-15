# Lets represent a file system with hashes
# You will be passed a hash table, whose keys represent folders.
# Their values will either be arrays of filenames in that directory
# or they will be hashes with the same rules (a treelike structure)
#
# Your job is to take the hashes, and return an array containing
# all of the complete file paths where each directory is separated by a '/'
#
# HINT:
#   [1,2,3].is_a? Array # => true
#   [1,2,3].is_a? Hash  # => false
#   {1=>1}.is_a?  Array # => false
#   {1=>1}.is_a?  Hash  # => true
#
# HINT2:
#   Don't feel constrained, you may create any methods, classes, etc, that
#   you need to you may address the problem in any way you need to (I
#   haven't tried it yet, but will probably use a recursive approach)
#
# EXAMPLES:
#
# pathify 'usr' => {'bin' => ['ruby'] }                                                        # => ['/usr/bin/ruby']
# pathify 'usr' => {'bin' => ['ruby', 'perl'] }                                                # => ['/usr/bin/ruby', '/usr/bin/perl']
# pathify 'usr' => {'bin' => ['ruby'], 'include' => ['zlib.h'] }                               # => ['/usr/bin/ruby', '/usr/include/zlib.h']
# pathify 'usr' => {'bin' => ['ruby']}, 'opt' => {'local' => {'bin' => ['sqlite3', 'rsync']} } # => ['/usr/bin/ruby', 'opt/local/bin/sqlite3', 'opt/local/bin/rsync']
# pathify                                                                                      # => []
#
#
# create it from scratch :)



def pathify(hash, path="", files=[])
    
    hash.each do |k,v| 
        if v.is_a? Array     
            v.each{ |i| files << "#{path}/#{k}/#{i}"} 
            p hash.keys.count
            path = "" if hash.keys.count == 1
        elsif v.is_a? Hash
            pathify(v,path<<"/#{k}", files)
        end 
        #path =""      
    end
    
    files
end



p pathify({"usr"=>{"bin"=>["ruby"]}, "opt"=>{"local"=>{"bin"=>["sqlite3", "rsync"]}}}) # => ["/usr/bin/ruby", "/opt/local/bin/sqlite3", "/opt/local/bin/rsync"]
p pathify({"usr"=>{"bin"=>["ruby"], "include"=>["zlib.h"]}}) # => ["/usr/bin/ruby", "/usr/include/zlib.h"]
