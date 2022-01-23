//
// Created by kobi on 1/23/22.
//

#include <iostream>
#include <thread>
#include <cassert>
#include <vector>
#include <numeric>

namespace {
    constexpr std::size_t NUM_THREADS = 100;

    void FillArr(std::array<int, NUM_THREADS>& working, const int idx)
    {
        working[idx] = idx;
    }
}

int main()
{
    std::array<std::thread, NUM_THREADS> threads;
    std::array<int, NUM_THREADS> working{0};
    int idx{};
    for(auto& t : threads) {
        // move op=
        t = std::thread(FillArr, std::ref(working), idx++);
    }

    // cannot have jthread since we must make sure they all done before calling equal
    for(auto& t : threads) {
        // move op=
        t.join();
    }

    std::array<int, NUM_THREADS> verify{0};
    std::iota(verify.begin(), verify.end(), 0);
    const auto ret = std::equal(verify.begin(), verify.end(), working.begin());
    std::clog << std::boolalpha << ret << '\n';

    return 0;
}
