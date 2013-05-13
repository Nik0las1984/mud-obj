from core.models import *

def counters(request):
    counters = Counter.objects.all()
 
    return {
            'counters': counters,
        }
