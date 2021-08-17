from IPython import get_ipython
def isnotebook():
    try:
        shell = get_ipython().__class__.__name__
        if shell == 'ZMQInteractiveShell':
            return True   # Jupyter notebook or qtconsole
        elif shell == 'TerminalInteractiveShell':
            return False  # Terminal running IPython
        else:
            return False  # Other type (?)
    except NameError:
        return False      # Probably standard Python interpreter


onsets = {
    "feet": [
        {
            "onset": 0,
            "condition": 0
        },
        {
            "onset": 29,
            "condition": 1
        },
        {
            "onset": 47,
            "condition": 0
        },
        {
            "onset": 67,
            "condition": 1
        },
        {
            "onset": 90,
            "condition": 0
        },
        {
            "onset": 133,
            "condition": 1
        },
        {
            "onset": 173,
            "condition": 0
        },
        {
            "onset": 197,
            "condition": 1
        },
        {
            "onset": 233,
            "condition": 0
        },
        {
            "onset": 254,
            "condition": 1
        },
        {
            "onset": 293,
            "condition": 0
        },
    ],
    "lh": [
        {
            "onset": 0,
            "condition": 0
        },
        {
            "onset": 8,
            "condition": 1
        },
        {
            "onset": 27,
            "condition": 0
        },
        {
            "onset": 68,
            "condition": 1
        },
        {
            "onset": 87,
            "condition": 0
        },
        {
            "onset": 102,
            "condition": 1
        },
        {
            "onset": 145,
            "condition": 0
        },
        {
            "onset": 181,
            "condition": 1
        },
        {
            "onset": 202,
            "condition": 0
        },
        {
            "onset": 243,
            "condition": 1
        },
        {
            "onset": 282,
            "condition": 0
        },
    ],
    "rh": [
        {
            "onset": 0,
            "condition": 0
        },
        {
            "onset": 11,
            "condition": 1
        },
        {
            "onset": 48,
            "condition": 0
        },
        {
            "onset": 93,
            "condition": 1
        },
        {
            "onset": 124,
            "condition": 0
        },
        {
            "onset": 149,
            "condition": 1
        },
        {
            "onset": 184,
            "condition": 0
        },
        {
            "onset": 213,
            "condition": 1
        },
        {
            "onset": 256,
            "condition": 0
        },
        {
            "onset": 273,
            "condition": 1
        },
        {
            "onset": 288,
            "condition": 0
        },
    ],
    "tongue": [
        {
            "onset": 0,
            "condition": 0
        },
        {
            "onset": 17,
            "condition": 1
        },
        {
            "onset": 60,
            "condition": 0
        },
        {
            "onset": 91,
            "condition": 1
        },
        {
            "onset": 110,
            "condition": 0
        },
        {
            "onset": 126,
            "condition": 1
        },
        {
            "onset": 144,
            "condition": 0
        },
        {
            "onset": 185,
            "condition": 1
        },
        {
            "onset": 226,
            "condition": 0
        },
        {
            "onset": 268,
            "condition": 1
        },
        {
            "onset": 297,
            "condition": 0
        },
    ],
}