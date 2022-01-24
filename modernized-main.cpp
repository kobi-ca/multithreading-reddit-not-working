//
// Created by kobi on 1/23/22.
//

#include <iostream>
#include <thread>
#include <cassert>
#include <numeric>

namespace {
    constexpr std::size_t NUM_THREADS = 100;
}

int main()
{
    std::array<int, NUM_THREADS> working{0};
    int idx{};
    {
        std::array<std::jthread, NUM_THREADS> threads;
        for (auto &t: threads) {
            // move op=
            t = std::jthread([&working](const int idx) { working[idx] = idx; }, idx++);
        }
    }
    std::array<int, NUM_THREADS> verify{0};
    std::iota(verify.begin(), verify.end(), 0);
    std::clog << std::boolalpha << (verify == working) << '\n';

    return 0;
}
