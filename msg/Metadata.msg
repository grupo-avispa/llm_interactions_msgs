# Metadata about a document

string source          # Source or origin of the document
string node_name       # Name of the node that processed or created the document
string node_function   # Function of the node that processed or created the document
uint32 log_level 20       # Level of logging associated with the document

# Types of log levels
uint32 DEBUG = 10
uint32 INFO = 20
uint32 WARNING = 30
uint32 ERROR = 40
uint32 FATAL = 50