namespace NodeTunnel.TCP;

[Flags]
public enum RoomFlags : byte
{
    None = 0,
    Unlisted = 1 << 0
}