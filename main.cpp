#include <assert.h>  /* assert() */
#include <stdio.h>   /* printf() */
#include <pthread.h> /* Create(), join() */
#include <unistd.h>  /*  */

#include <vector>
#include <numeric>

#define NUM (100)

static int arr[NUM] = {0};

void CheckArr(void)
{
    int is_filled = 1;
    int i = 0;
    for (i = 0; i < NUM; i++)
    {
        if (i != arr[i])
        {
            is_filled = 0;
        }
    }

    printf("\n%s\n", is_filled ? "SUCCESS" : "FAIL");
}

void *FillArr(void *i_p)
{
    int i = 0;

    assert(i_p);

    i = *(int *)i_p;
    arr[i] = i;

    return NULL;
}

int main()
{
    pthread_t threads_arr[NUM] = {0};
    std::vector<int> vals(NUM);
    std::iota(vals.begin(), vals.end(), 0);
    int i = 0;
    for (i = 0; i < NUM; i++)
    {
        while (pthread_create(threads_arr + i, NULL, FillArr, &vals[i]))
        {
            printf("Failed creating thread at %d\n", i);
        }
    }

    for (i = 0; i < NUM; i++)
    {
        pthread_join(threads_arr[i], NULL);
    }

    CheckArr();

    return 0;
}
