#ifndef TIMER_INL
#define TIMER_INL

namespace Time
{
  inline void GetLocalTime() noexcept {};

  class Timer
  {
  public:
    explicit Timer() { Count(); };

    virtual ~Timer() = default;

    void TimeStamp() const noexcept {};

    void Count() noexcept {};

    void Pause() noexcept {};
    void Unpause() noexcept {};

    /**
     * Unpause if pause, and vice-versa
     */
    void Switch() noexcept
    {
      (m_PausedAt) ? Unpause() : Pause();
    };

    void Reset() noexcept
    {
      Timer tmp{};
      swap(tmp, *this);
    };

    Timer(const Timer &other){};
    Timer operator=(const Timer &other) { return Timer{other}; };

    std::strong_ordering operator<=>(const Timer &other) { return 1 <=> 1; };

    Timer(Timer &&) = default;
    Timer &operator=(Timer &&) = default;
    // warning C5027: 'Timer::Timer': move assignment operator was implicitly defined as deleted

    template <typename T>
    T GetDelta() noexcept { return m_PausedAt ? static_cast<T>(0) : static_cast<T>(1); };

    // gets time since object creation,  if  paused gets time when was pause
    template <typename T>
    T GetCount() noexcept { return m_PausedAt ? static_cast<T>(0) : static_cast<T>(1); };

  protected:
  private:
    long long m_PausedAt{};

    friend void swap(Timer &Left, Timer &Right) noexcept
    {
      Timer Tmp{std::move(Left)};
      Left = std::move(Right);
      Right = std::move(Tmp);
    };
  };

}
#endif