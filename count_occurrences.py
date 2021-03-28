# USAGE: in the Karora command line, type 'python3 count_occurrences.py'
# NOTE: it is necessary that Friesland.txt and Noord-Holland.txt are available for the program,
# and that they contain the output given by collect_tweets.sh

def count_occurrences():

    # define two accumulator variables which will store both the absents and presents of tweets in Friesland.txt
    FR_presents = 0
    FR_absents = 0

    # open Friesland.txt, loop over every line
    # if the line contains a lowercase or uppercase vowel with accent circumflex, presents variable is increased by 1
    # if this is not the case, absents variable is increased by 1
    with open('Friesland.txt', 'r') as infile:
        for line in infile:
            if 'ê' in line or 'â' in line or 'î' in line or 'û' in line or 'ô' in line \
            or 'Ê' in line or 'Â' in line or 'Î' in line or 'Û' in line or 'Ô' in line:
                FR_presents += 1
            else:
                FR_absents += 1

    # the process here is the same, but with Noord-Holland.txt
    NH_presents = 0
    NH_absents = 0

    with open('Noord-Holland.txt', 'r') as infile:
        for line in infile:
            if 'ê' in line or 'â' in line or 'î' in line or 'û' in line or 'ô' in line \
            or 'Ê' in line or 'Â' in line or 'Î' in line or 'Û' in line or 'Ô' in line:
                NH_presents += 1
            else:
                NH_absents += 1

    # return a list that contains Friesland's presents and absents and Noord-Holland's presents and absents
    results_list = [FR_presents, FR_absents, NH_presents, NH_absents]
    return (results_list)


def show_results(results_list):

    # use the list of results to print a table of results
    # columns: Friesland and Noord-Holland
    # rows: accent circumflex present and accent circumflex absent
    print('\n')
    print("{0:^60}".format("-"*70))
    print("{0:^20} {1} {2:^20} {1} {3:^20}".format(" ", "|", "Friesland", "Noord-Holland"))
    print("{0:^60}".format("-"*70))
    print("{0:^20} {1} {2:^20} {1} {3:^20}".format("accent present", "|", results_list[0], results_list[2]))
    print("{0:^60}".format("-"*70))
    print("{0:^20} {1} {2:^20} {1} {3:^20}".format("accent absent", "|", results_list[1], results_list[3]))
    print("{0:^60}".format("-"*70))
    print('\n')


def main():
    results_list = count_occurrences()
    results = show_results(results_list)
    return results


main()
