import sys
import pdb
import logging

# Import modules
from ooo_scheduler import out_of_order_scheduler

# Main function
def main (args):

    # Parse command line arguments
    if len(args) != 3:
        print ("Error: Not enough arguments!")
        print ("Usage: python main.py input_file output_file")
        sys.exit(1)

    infilename = args[1]
    outfilename = args[2]

    # Setup logging.
    logging.basicConfig(level=logging.INFO, format='[%(filename)18s:%(lineno)-4d] %(levelname)-5s:  %(message)s')

    # Uncomment the following line to print debug messages to STDOUT.
    logging.getLogger().setLevel(logging.DEBUG)

    # Fire up the scheduler.
    ooo = out_of_order_scheduler(infilename, outfilename)
    ooo.schedule()
    ooo.generate_output_file()


if __name__ == "__main__":
    main(sys.argv)
