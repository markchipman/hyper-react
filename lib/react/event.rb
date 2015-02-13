module React
  class Event
    include Native
    alias_native :bubbles, :bubbles
    alias_native :cancelable, :cancelable
    alias_native :current_target, :currentTarget
    alias_native :default_prevented, :defaultPrevented
    alias_native :event_phase, :eventPhase
    alias_native :is_trusted?, :isTrusted
    alias_native :native_event, :nativeEvent
    alias_native :target, :target
    alias_native :timestamp, :timeStamp
    alias_native :event_type, :type
    alias_native :prevent_default, :preventDefault
    alias_native :stop_propagation, :stopPropagation
    
    BUILT_IN_EVENTS = %w{onCopy onCut onPaste onKeyDown onKeyPress onKeyUp
      onFocus onBlur onChange onInput onSubmit onClick onDoubleClick onDrag
      onDragEnd onDragEnter onDragExit onDragLeave onDragOver onDragStart onDrop 
      onMouseDown onMouseEnter onMouseLeave onMouseMove onMouseOut onMouseOver 
      onMouseUp onTouchCancel onTouchEnd onTouchMove onTouchStart onScroll}
    
    def initialize(native_element)
      @native = native_element
    end
  end
end