# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    correct_set_up.sh                                  :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nboisde <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/09/10 14:30:33 by nboisde           #+#    #+#              #
#    Updated: 2020/09/10 15:40:31 by nboisde          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# A Shell Script to Check and Print everything before testing...
echo "Welcome in nboisde shell script to check Repository Faster.\n"
echo "Starting Process"
sleep 1
find .
norminette -R CheckForbiddenSourceHeader ./ex*/*.c
sleep 3
cat ./ex*/*.c
find ./ex*/*.c > tmp.c
awk '{print "#include \""$0"\""}' tmp.c >> tmp.c
cat tmp.c | grep "^#" > main.c
echo "\nint main(void)\n{\n}" >> main.c
echo "main.c for tests -------------------\n"
cat main.c
rm tmp.c
ls -la
